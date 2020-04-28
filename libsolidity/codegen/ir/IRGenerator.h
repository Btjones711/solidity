/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
/**
 * @author Alex Beregszaszi
 * @date 2017
 * Component that translates Solidity code into Yul.
 */

#pragma once

#include <libsolidity/interface/OptimiserSettings.h>
#include <libsolidity/ast/ASTForward.h>
#include <libsolidity/codegen/ir/IRGenerationContext.h>
#include <libsolidity/codegen/YulUtilFunctions.h>
#include <liblangutil/EVMVersion.h>
#include <string>

namespace solidity::frontend
{

class SourceUnit;

class IRGenerator
{
public:
	IRGenerator(
		langutil::EVMVersion _evmVersion,
		RevertStrings _revertStrings,
		OptimiserSettings _optimiserSettings
	):
		m_evmVersion(_evmVersion),
		m_optimiserSettings(_optimiserSettings),
		m_context(_evmVersion, _revertStrings, std::move(_optimiserSettings)),
		m_utils(_evmVersion, m_context.revertStrings(), m_context.functionCollector())
	{}

	/// Generates and returns the IR code, in unoptimized and optimized form
	/// (or just pretty-printed, depending on the optimizer settings).
	std::pair<std::string, std::string> run(
		ContractDefinition const& _contract,
		std::map<ContractDefinition const*, std::string const> const& _otherYulSources
	);

private:
	std::string generate(
		ContractDefinition const& _contract,
		std::map<ContractDefinition const*, std::string const> const& _otherYulSources
	);
	std::string generate(Block const& _block);

	/// Generates code for all the functions from the function generation queue and also any
	/// internal dispatch functions necessary to be able to call them via pointers.
	/// The resulting code is stored in the function collector in IRGenerationContext.
	/// @return The list of internal dispatch candidates that should be passed to the context.
	/// This needs to be done only for candidates from the deployment code since they may end up
	/// in storage variables and be called from the runtime code. Candidates detected in the
	/// runtime code of the contract can be ignored.
	InternalDispatchMap generateQueuedFunctionsAndInternalDispatch();
	/// Generates code for and returns the name of the function.
	std::string generateFunction(FunctionDefinition const& _function);
	/// Generates a getter for the given declaration and returns its name
	std::string generateGetter(VariableDeclaration const& _varDecl);

	/// Generates code that assigns the initial value of the respective type.
	std::string generateInitialAssignment(VariableDeclaration const& _varDecl);

	/// Generates implicit constructors for all contracts in the inheritance hierarchy of
	/// @a _contract
	/// If there are user defined constructors, their body will be included in implicit constructors body.
	void generateImplicitConstructors(ContractDefinition const& _contract);

	/// Evaluates constructor's arguments for all base contracts (listed in inheritance specifiers) of
	/// @a _contract
	/// @returns Pair of expressions needed to evaluate params and list of parameters in a map contract -> params
	std::pair<std::string, std::map<ContractDefinition const*, std::string>> evaluateConstructorArguments(
		ContractDefinition const& _contract
	);

	/// Initializes state variables of
	/// @a _contract
	/// @returns Source code to initialize state variables
	std::string initStateVariables(ContractDefinition const& _contract);

	std::string deployCode(ContractDefinition const& _contract);
	std::string callValueCheck();

	std::string implicitConstructorName(ContractDefinition const& _contract);

	std::string dispatchRoutine(ContractDefinition const& _contract);

	std::string memoryInit();

	void resetContext(ContractDefinition const& _contract);

	langutil::EVMVersion const m_evmVersion;
	OptimiserSettings const m_optimiserSettings;

	IRGenerationContext m_context;
	YulUtilFunctions m_utils;
};

}

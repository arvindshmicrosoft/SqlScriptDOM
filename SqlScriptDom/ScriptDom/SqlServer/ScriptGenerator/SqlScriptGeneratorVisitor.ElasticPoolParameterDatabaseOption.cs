//------------------------------------------------------------------------------
// <copyright file="SqlScriptGeneratorVisitor.LiteralDatabaseOption.cs" company="Microsoft">
//         Copyright (c) Microsoft Corporation.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------
using Microsoft.SqlServer.TransactSql.ScriptDom;

namespace Microsoft.SqlServer.TransactSql.ScriptDom.ScriptGenerator
{
    partial class SqlScriptGeneratorVisitor
    {
        public override void ExplicitVisit(ElasticPoolParameter node)
        {
            DatabaseOptionKindHelper.Instance.GenerateSourceForOption(_writer, node.OptionKind);
            //GenerateSpaceAndIdentifier(CodeGenerationSupporter.ServiceObjective);
            GenerateSpaceAndSymbol(TSqlTokenType.EqualsSign);
            GenerateSpaceAndIdentifier(CodeGenerationSupporter.ElasticPool);
            GenerateSpaceAndSymbol(TSqlTokenType.LeftParenthesis);
            GenerateSpaceAndIdentifier(CodeGenerationSupporter.Name);
            GenerateSpaceAndSymbol(TSqlTokenType.EqualsSign);
            GenerateSpaceAndFragmentIfNotNull(node.ElasticPoolName);
            GenerateSpaceAndSymbol(TSqlTokenType.RightParenthesis);
        }
    }
}

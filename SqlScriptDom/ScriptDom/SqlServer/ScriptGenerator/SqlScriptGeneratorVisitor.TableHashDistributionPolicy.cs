﻿//------------------------------------------------------------------------------
// <copyright file="SqlScriptGeneratorVisitor.TableHashDistributionnPolicy.cs" company="Microsoft">
//         Copyright (c) Microsoft Corporation.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------
using Microsoft.SqlServer.TransactSql.ScriptDom;

namespace Microsoft.SqlServer.TransactSql.ScriptDom.ScriptGenerator
{
    partial class SqlScriptGeneratorVisitor
    {
        public override void ExplicitVisit(TableHashDistributionPolicy node)
        {
            GenerateIdentifier(CodeGenerationSupporter.Hash);
            GenerateSymbol(TSqlTokenType.LeftParenthesis);
            GenerateFragmentIfNotNull(node.DistributionColumn);
            GenerateSymbol(TSqlTokenType.RightParenthesis);
        }
    }
}
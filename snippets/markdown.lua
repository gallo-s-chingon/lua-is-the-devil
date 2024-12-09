print("markdown snippets loading")

local snippets = {
	header = {
		{ prefix = "h1", body = "# ${1:Header}", description = "Add header level 1" },
		{ prefix = "h2", body = "## ${1:Header}", description = "Add header level 2" },
		{ prefix = "h3", body = "### ${1:Header}", description = "Add header level 3" },
		{ prefix = "h4", body = "#### ${1:Header}", description = "Add header level 4" },
		{ prefix = "h5", body = "##### ${1:Header}", description = "Add header level 5" },
		{ prefix = "h6", body = "###### ${1:Header}", description = "Add header level 6" },
	},
	links = {
		{ prefix = { "l", "link" }, body = "[${1:text}](${2:url}) ${0}", description = "Add links" },
		{ prefix = { "u", "url" }, body = "<${1}> ${0}", description = "Add urls" },
		{ prefix = "img", body = "![${1:alt text}](${2:path}) ${0}", description = "Add images" },
	},
	formatting = {
		{ prefix = "strikethrough", body = "~~${1}~~ ${0}", description = "Insert strikethrough" },
		{ prefix = { "bold", "b" }, body = "**${1}** $0", description = "Insert bold text" },
		{ prefix = { "i", "italic" }, body = "*${1}* $0", description = "Insert italic text" },
		{ prefix = { "bold and italic", "bi" }, body = "***${1}*** $0", description = "Insert bold and italic text" },
	},
	callout = {
		{
			prefix = "abstr",
			body = { ">[!ABSTRACT] ${1:ReplaceAbstractOrNot}", ">", "> ${2:Abstract}", "", "${0}" },
			description = "Insert abstract",
		},
		{
			prefix = "atten",
			body = { ">[!ATTENTION] ${1:ReplaceAttentionOrNot}", ">", "> ${2:Attention}", "", "${0}" },
			description = "Insert attention",
		},
		{
			prefix = "bug",
			body = { ">[!BUG] ${1:ReplaceBugOrNot}", ">", "> ${2:Bug}", "", "${0}" },
			description = "Insert bug",
		},
		{
			prefix = "caut",
			body = { ">[!CAUTION] ${1:ReplaceCautionOrNot}", ">", "> ${2:Caution}", "", "${0}" },
			description = "Insert caution",
		},
		{
			prefix = "check",
			body = { ">[!CHECK] ${1:ReplaceCheckOrNot}", ">", "> ${2:Check}", "", "${0}" },
			description = "Insert check",
		},
		{
			prefix = "cite",
			body = { ">[!CITE] ${1:ReplaceCitationOrNot}", ">", "> ${2:Citation}", "", "${0}" },
			description = "Insert citation",
		},
		{
			prefix = "dang",
			body = { ">[!DANGER] ${1:ReplaceDangerOrNot}", ">", "> ${2:Danger}", "", "${0}" },
			description = "Insert danger",
		},
		{
			prefix = "done",
			body = { ">[!DONE] ${1:ReplaceDoneOrNot}", ">", "> ${2:Done}", "", "${0}" },
			description = "Insert done",
		},
		{
			prefix = "err",
			body = { ">[!ERROR] ${1:ReplaceErrorOrNot}", ">", "> ${2:Error}", "", "${0}" },
			description = "Insert error",
		},
		{
			prefix = "exam",
			body = { ">[!EXAMPLE] ${1:ReplaceExampleOrNot}", ">", "> ${2:Example}", "", "${0}" },
			description = "Insert example",
		},
		{
			prefix = "fail",
			body = { ">[!FAIL] ${1:ReplaceFailOrNot}", ">", "> ${2:Fail}", "", "${0}" },
			description = "Insert fail",
		},
		{
			prefix = "faq",
			body = { ">[!FAQ] ${1:ReplaceFaqOrNot}", ">", "> ${2:Faq}", "", "${0}" },
			description = "Insert faq",
		},
		{
			prefix = "help",
			body = { ">[!HELP] ${1:ReplaceHelpOrNot}", ">", "> ${2:Help}", "", "${0}" },
			description = "Insert help",
		},
		{
			prefix = "hint",
			body = { ">[!HINT] ${1:ReplaceHintOrNot}", ">", "> ${2:Hint}", "", "${0}" },
			description = "Insert hint",
		},
		{
			prefix = "import",
			body = { ">[!IMPORTANT] ${1}", ">", "> ${2:Important}", "", "${0}" },
			description = "Insert important text",
		},
		{
			prefix = "info",
			body = { ">[!INFO] ${1}", ">", "> ${2:Information}", "", "${0}" },
			description = "Insert info",
		},
		{
			prefix = "miss",
			body = { ">[!MISS] ${1}", ">", "> ${2:MissingFeature}", "", "${0}" },
			description = "Insert missing",
		},
		{
			prefix = "note",
			body = { ">[!NOTE] ${1:ReplaceNoteOrNot}", ">", "> ${2:Note}", "", "${0}" },
			description = "Insert note",
		},
		{
			prefix = "succ",
			body = { ">[!SUCCESS] ${1:ReplaceSuccessOrNot}", ">", "> ${2:Success}", "", "${0}" },
			description = "Insert success",
		},
		{
			prefix = "summ",
			body = { ">[!SUMMARY] ${1:ReplaceSummaryOrNot}", ">", "> ${2:Summary}", "", "${0}" },
			description = "Insert summary",
		},
		{
			prefix = "tip",
			body = { ">[!TIP] ${1:ReplaceTipOrNot}", ">", "> ${2:Tip}", "", "${0}" },
			description = "Insert tip",
		},
		{
			prefix = "tldr",
			body = { ">[!TLDR] ${1:ReplaceTldrOrNot}", ">", "> ${2:TLDR}", "", "${0}" },
			description = "Insert tldr",
		},
		{
			prefix = "todo",
			body = { ">[!TODO] ${1:ReplaceTodoOrNot}", ">", "> ${2:todoText}", "", "${0}" },
			description = "Insert todo",
		},
		{
			prefix = "quest",
			body = { ">[!QUESTION] ${1:ReplaceQuestionOrNot}", ">", "> ${2:Question}", "", "${0}" },
			description = "Insert question",
		},
		{
			prefix = "quote",
			body = { ">[!QUOTE] ${1:ReplaceQuoteOrNot}", ">", "> ${2:Quote}", "", "${0}" },
			description = "Insert quote",
		},
		{
			prefix = "warn",
			body = { ">[!WARNING] ${1:ReplaceWarningOrNot}", ">", "> ${2:Warning}", "", "${0}" },
			description = "Insert warning",
		},
	},
	code = {
		{ prefix = "code", body = "`${1}` $0", description = "Insert code" },
		{
			prefix = { "codeblock", "cb" },
			body = "```${1:language}\n$0\n```",
			description = "Insert fenced code block",
		},
		{ prefix = { "codelang", "cl" }, body = "```${1:language}\n$0", description = "Insert code block prefix" },
		{ prefix = { "closecode", "cc" }, body = "```\n$0", description = "Insert code block close" },
	},
	lists = {
		{
			prefix = "unordered list",
			body = { "- ${1:first}", "- ${2:second}", "- ${3:third}", "$0" },
			description = "Insert unordered list",
		},
		{
			prefix = "ordered list",
			body = { "1. ${1:first}", "2. ${2:second}", "3. ${3:third}", "$0" },
			description = "Insert ordered list",
		},
	},
	misc = {
		{ prefix = "horizontal rule", body = "----------\n", description = "Insert horizontal rule" },
	},
	tasks = {
		{ prefix = "task", body = { "- [${1| ,x|}] ${2:text}", "${0}" }, description = "Insert task list" },
		{
			prefix = "task2",
			body = { "- [${1| ,x|}] ${2:text}", "- [${3| ,x|}] ${4:text}", "${0}" },
			description = "Insert task list with 2 tasks",
		},
		{
			prefix = "task3",
			body = { "- [${1| ,x|}] ${2:text}", "- [${3| ,x|}] ${4:text}", "- [${5| ,x|}] ${6:text}", "${0}" },
			description = "Insert task list with 3 tasks",
		},
		{
			prefix = "task4",
			body = {
				"- [${1| ,x|}] ${2:text}",
				"- [${3| ,x|}] ${4:text}",
				"- [${5| ,x|}] ${6:text}",
				"- [${7| ,x|}] ${8:text}",
				"${0}",
			},
			description = "Insert task list with 4 tasks",
		},
		{
			prefix = "task5",
			body = {
				"- [${1| ,x|}] ${2:text}",
				"- [${3| ,x|}] ${4:text}",
				"- [${5| ,x|}] ${6:text}",
				"- [${7| ,x|}] ${8:text}",
				"- [${9| ,x|}] ${10:text}",
				"${0}",
			},
			description = "Insert task list with 5 tasks",
		},
	},
	tables = {
		{
			prefix = "table",
			body = {
				"| ${1:Column1} | ${2:Column2} | ${3:Column3} |",
				"|:--- | :--- | :--- |",
				"| ${4:Item1} | ${5:Item1} | ${6:Item1} |",
				"${0}",
			},
			description = "Insert table with 2 rows and 3 columns. First row is heading.",
		},
		-- Add more table snippets here as needed
	},
	scripts = {
		{ prefix = "sub", body = "${1}<sub>${0}", description = "Create a subscript." },
		{ prefix = "sup", body = "${1}<sup>${0}", description = "Create a superscript." },
	},
	frontmatter = {
		{
			prefix = "meta",
			body = {
				"---",
				"title: ${1:Title}",
				"layout: default",
				"comments: true",
				"published: true",
				"author: ${2:Author}",
				"date: ${3:Date}",
				"---",
				"# ${4:headingName}",
				"",
				"=====",
				"",
				"$0",
			},
		},
	},
}
print("markdown snippets loaded successfully")
return snippets

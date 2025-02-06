local M = {}
local function create_snippet(prefix, body, description)
  return {
    prefix = prefix,
    body = body,
    description = description,
  }
end
M.blog_templates = {
  basic_header = function()
    return create_snippet("head", {
      "---",
      "layout: post",
      "title: ${1:title}",
      "date: $2",
      "author: Gallo Chingon",
      "categories: [${3:tag.1}, ${4:tag.2}]",
      "image: assets/${5:image Name And Extension}",
      "created: ${6:milDate}",
      "updated: ",
      "description: ${7:a paragraph about the post}",
      "excerpt: ${8:a sentence about the post}",
      "---",
      "$0",
    }, "yaml front matter for blog post")
  end,

  rated_header = function()
    return create_snippet("rating", {
      "---",
      "layout: post",
      "title: ${1:title}",
      "date: $2",
      "author: Gallo Chingon",
      "categories: [${3:tag.1}, ${4:tag.2}]",
      "image: assets/${5:image Name And Extension}",
      "created: ${6:milDate}",
      "updated: ",
      "description: ${7:a paragraph about the post}",
      "excerpt: ${8:a sentence about the post}",
      "rating: ${9:zero-3}",
      "---",
      "$0",
    }, "yaml front matter for blog post WITH a rating")
  end,
}
function M.get_snippets()
  return {
    ["yaml blog header"] = M.blog_templates.basic_header(),
    ["yaml blog header with rating"] = M.blog_templates.rated_header(),
  }
end

return M

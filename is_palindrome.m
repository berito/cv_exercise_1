function result = is_palindrome(s)
    s = tolower(regexprep(s, '[^a-zA-Z0-9]', ''));
    result = strcmp(s, flip(s));
end

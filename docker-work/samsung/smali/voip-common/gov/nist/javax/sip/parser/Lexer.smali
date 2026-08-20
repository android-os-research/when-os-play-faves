.class public Lgov/nist/javax/sip/parser/Lexer;
.super Lgov/nist/core/LexerCore;
.source "Lexer.java"


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->selectLexer(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static greylist getHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "line"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 55
    return-object v0

    .line 56
    :cond_4
    const/4 v1, 0x0

    .line 58
    .local v1, "headerName":Ljava/lang/String;
    :try_start_5
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, "begin":I
    const/4 v1, 0x0

    .line 60
    const/4 v3, 0x1

    if-lt v2, v3, :cond_19

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_18} :catch_1b

    move-object v1, v0

    .line 64
    .end local v2    # "begin":I
    :cond_19
    nop

    .line 65
    return-object v1

    .line 62
    :catch_1b
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v0
.end method

.method public static greylist getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "line"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 80
    return-object v0

    .line 81
    :cond_4
    const/4 v1, 0x0

    .line 83
    .local v1, "headerValue":Ljava/lang/String;
    :try_start_5
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, "begin":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_11} :catch_13

    .line 87
    .end local v1    # "headerValue":Ljava/lang/String;
    .end local v2    # "begin":I
    .local v0, "headerValue":Ljava/lang/String;
    nop

    .line 88
    return-object v0

    .line 85
    .end local v0    # "headerValue":Ljava/lang/String;
    .restart local v1    # "headerValue":Ljava/lang/String;
    :catch_13
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v0
.end method


# virtual methods
.method public greylist selectLexer(Ljava/lang/String;)V
    .registers 18
    .param p1, "lexerName"    # Ljava/lang/String;

    .line 92
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    monitor-enter v3

    .line 94
    :try_start_7
    sget-object v0, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, v1, Lgov/nist/javax/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    .line 95
    iput-object v2, v1, Lgov/nist/javax/sip/parser/Lexer;->currentLexerName:Ljava/lang/String;

    .line 96
    iget-object v0, v1, Lgov/nist/javax/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_320

    .line 97
    invoke-virtual/range {p0 .. p1}, Lgov/nist/javax/sip/parser/Lexer;->addLexer(Ljava/lang/String;)Ljava/util/Hashtable;

    .line 98
    const-string v0, "method_keywordLexer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x858

    const/16 v5, 0x803

    if-eqz v0, :cond_71

    .line 99
    const-string v0, "REGISTER"

    const/16 v6, 0x804

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 100
    const-string v0, "ACK"

    const/16 v6, 0x806

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 101
    const-string v0, "OPTIONS"

    const/16 v6, 0x808

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 102
    const-string v0, "BYE"

    const/16 v6, 0x807

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 103
    const-string v0, "INVITE"

    const/16 v6, 0x805

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 104
    const-string v0, "sip"

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 105
    const-string v0, "sips"

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 106
    const-string v0, "SUBSCRIBE"

    const/16 v4, 0x835

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 107
    const-string v0, "NOTIFY"

    const/16 v4, 0x836

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 108
    const-string v0, "MESSAGE"

    const/16 v4, 0x846

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 111
    const-string v0, "PUBLISH"

    const/16 v4, 0x843

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_320

    .line 113
    :cond_71
    const-string v0, "command_keywordLexer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    .line 114
    const-string v0, "Error-Info"

    const/16 v4, 0x80a

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 116
    const-string v0, "Allow-Events"

    const/16 v4, 0x841

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 118
    const-string v0, "Authentication-Info"

    const/16 v5, 0x840

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 120
    const-string v0, "Event"

    const/16 v5, 0x83f

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 121
    const-string v0, "Min-Expires"

    const/16 v6, 0x83e

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 123
    const-string v0, "RSeq"

    const/16 v6, 0x83c

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 124
    const-string v0, "RAck"

    const/16 v6, 0x83d

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 125
    const-string v0, "Reason"

    const/16 v6, 0x83b

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 127
    const-string v0, "Reply-To"

    const/16 v6, 0x83a

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 129
    const-string v0, "Subscription-State"

    const/16 v6, 0x838

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 131
    const-string v0, "Timestamp"

    const/16 v6, 0x837

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 133
    const-string v0, "In-Reply-To"

    const/16 v6, 0x80b

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 135
    const-string v0, "MIME-Version"

    const/16 v6, 0x80c

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 137
    const-string v0, "Alert-Info"

    const/16 v6, 0x80d

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 139
    const-string v0, "From"

    const/16 v6, 0x80e

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 140
    const-string v0, "To"

    const/16 v7, 0x80f

    invoke-virtual {v1, v0, v7}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 141
    const-string v0, "Refer-To"

    const/16 v8, 0x842

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 143
    const-string v0, "Via"

    const/16 v9, 0x810

    invoke-virtual {v1, v0, v9}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 144
    const-string v0, "User-Agent"

    const/16 v10, 0x811

    invoke-virtual {v1, v0, v10}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 146
    const-string v0, "Server"

    const/16 v10, 0x812

    invoke-virtual {v1, v0, v10}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 148
    const-string v0, "Accept-Encoding"

    const/16 v10, 0x813

    invoke-virtual {v1, v0, v10}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 150
    const-string v0, "Accept"

    const/16 v10, 0x814

    invoke-virtual {v1, v0, v10}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 152
    const-string v0, "Allow"

    const/16 v11, 0x815

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 153
    const-string v0, "Route"

    const/16 v11, 0x816

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 154
    const-string v0, "Authorization"

    const/16 v11, 0x817

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 156
    const-string v0, "Proxy-Authorization"

    const/16 v11, 0x818

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 158
    const-string v0, "Retry-After"

    const/16 v11, 0x819

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 160
    const-string v0, "Proxy-Require"

    const/16 v11, 0x81a

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 162
    const-string v0, "Content-Language"

    const/16 v11, 0x81b

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 164
    const-string v0, "Unsupported"

    const/16 v11, 0x81c

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 166
    const-string v0, "Supported"

    invoke-virtual {v1, v0, v10}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 168
    const-string v0, "Warning"

    const/16 v11, 0x81e

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 170
    const-string v0, "Max-Forwards"

    const/16 v11, 0x81f

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 172
    const-string v0, "Date"

    const/16 v11, 0x820

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 173
    const-string v0, "Priority"

    const/16 v11, 0x821

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 175
    const-string v0, "Proxy-Authenticate"

    const/16 v11, 0x822

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 177
    const-string v0, "Content-Encoding"

    const/16 v11, 0x823

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 179
    const-string v0, "Content-Length"

    const/16 v12, 0x824

    invoke-virtual {v1, v0, v12}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 181
    const-string v0, "Subject"

    const/16 v13, 0x825

    invoke-virtual {v1, v0, v13}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 183
    const-string v0, "Content-Type"

    const/16 v14, 0x826

    invoke-virtual {v1, v0, v14}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 185
    const-string v0, "Contact"

    const/16 v15, 0x827

    invoke-virtual {v1, v0, v15}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 187
    const-string v0, "Call-ID"

    const/16 v5, 0x828

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 189
    const-string v0, "Require"

    const/16 v8, 0x829

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 191
    const-string v0, "Expires"

    const/16 v8, 0x82a

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 193
    const-string v0, "Record-Route"

    const/16 v8, 0x82c

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 195
    const-string v0, "Organization"

    const/16 v8, 0x82d

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 197
    const-string v0, "CSeq"

    const/16 v8, 0x82e

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 198
    const-string v0, "Accept-Language"

    const/16 v8, 0x82f

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 200
    const-string v0, "WWW-Authenticate"

    const/16 v8, 0x830

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 202
    const-string v0, "Call-Info"

    const/16 v8, 0x833

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 204
    const-string v0, "Content-Disposition"

    const/16 v8, 0x834

    invoke-virtual {v1, v0, v8}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 207
    const-string v0, "K"

    invoke-virtual {v1, v0, v10}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 208
    const-string v0, "C"

    invoke-virtual {v1, v0, v14}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 210
    const-string v0, "E"

    invoke-virtual {v1, v0, v11}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 212
    const-string v0, "F"

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 213
    const-string v0, "I"

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 214
    const-string v0, "M"

    invoke-virtual {v1, v0, v15}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 215
    const-string v0, "L"

    invoke-virtual {v1, v0, v12}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 217
    const-string v0, "S"

    invoke-virtual {v1, v0, v13}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 218
    const-string v0, "T"

    invoke-virtual {v1, v0, v7}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 219
    const-string v0, "U"

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 221
    const-string v0, "V"

    invoke-virtual {v1, v0, v9}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 222
    const-string v0, "R"

    const/16 v4, 0x842

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 223
    const-string v0, "O"

    const/16 v4, 0x83f

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 228
    const-string v0, "X"

    const/16 v4, 0x855

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 231
    const-string v0, "SIP-ETag"

    const/16 v5, 0x844

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 233
    const-string v0, "SIP-If-Match"

    const/16 v5, 0x845

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 237
    const-string v0, "Session-Expires"

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 239
    const-string v0, "Min-SE"

    const/16 v4, 0x856

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 241
    const-string v0, "Referred-By"

    const/16 v4, 0x854

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 245
    const-string v0, "Replaces"

    const/16 v4, 0x857

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 248
    const-string v0, "Join"

    const/16 v4, 0x85c

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 252
    const-string v0, "Path"

    const/16 v4, 0x847

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 253
    const-string v0, "Service-Route"

    const/16 v4, 0x848

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 255
    const-string v0, "P-Asserted-Identity"

    const/16 v4, 0x849

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 257
    const-string v0, "P-Preferred-Identity"

    const/16 v4, 0x84a

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 259
    const-string v0, "Privacy"

    const/16 v4, 0x84e

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 263
    const-string v0, "P-Called-Party-ID"

    const/16 v4, 0x850

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 265
    const-string v0, "P-Associated-URI"

    const/16 v4, 0x851

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 267
    const-string v0, "P-Visited-Network-ID"

    const/16 v4, 0x84b

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 269
    const-string v0, "P-Charging-Function-Addresses"

    const/16 v4, 0x84c

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 271
    const-string v0, "P-Charging-Vector"

    const/16 v4, 0x84d

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 273
    const-string v0, "P-Access-Network-Info"

    const/16 v4, 0x84f

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 275
    const-string v0, "P-Media-Authorization"

    const/16 v4, 0x852

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 278
    const-string v0, "Security-Server"

    const/16 v4, 0x859

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 280
    const-string v0, "Security-Verify"

    const/16 v4, 0x85b

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 282
    const-string v0, "Security-Client"

    const/16 v4, 0x85a

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 286
    const-string v0, "P-User-Database"

    const/16 v4, 0x85d    # 3.0E-42f

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 290
    const-string v0, "P-Profile-Key"

    const/16 v4, 0x85e

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 294
    const-string v0, "P-Served-User"

    const/16 v4, 0x85f

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 298
    const-string v0, "P-Preferred-Service"

    const/16 v4, 0x860

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 302
    const-string v0, "P-Asserted-Service"

    const/16 v4, 0x861

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 306
    const-string v0, "References"

    const/16 v4, 0x862

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto :goto_320

    .line 311
    :cond_2eb
    const-string v0, "status_lineLexer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f9

    .line 312
    const-string v0, "sip"

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto :goto_320

    .line 313
    :cond_2f9
    const-string v0, "request_lineLexer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_307

    .line 314
    const-string v0, "sip"

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto :goto_320

    .line 315
    :cond_307
    const-string v0, "sip_urlLexer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_320

    .line 316
    const-string v0, "tel"

    const/16 v6, 0x839

    invoke-virtual {v1, v0, v6}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 317
    const-string v0, "sip"

    invoke-virtual {v1, v0, v5}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 318
    const-string v0, "sips"

    invoke-virtual {v1, v0, v4}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 321
    :cond_320
    :goto_320
    monitor-exit v3

    .line 322
    return-void

    .line 321
    :catchall_322
    move-exception v0

    monitor-exit v3
    :try_end_324
    .catchall {:try_start_7 .. :try_end_324} :catchall_322

    throw v0
.end method

.class public Lgov/nist/javax/sip/parser/SubscriptionStateParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SubscriptionStateParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "subscriptionState"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    const-string v1, "SubscriptionStateParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_enter(Ljava/lang/String;)V

    .line 70
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    .line 72
    .local v0, "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    const/16 v2, 0x838

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->headerName(I)V

    .line 74
    const-string v2, "Subscription-State"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SubscriptionState;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 79
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    .line 81
    :goto_2c
    iget-object v4, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_11c

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    move-object v2, v4

    .line 86
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "value":Ljava/lang/String;
    const-string v5, "reason"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x3d

    if-eqz v5, :cond_7b

    .line 88
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 90
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 91
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    move-object v2, v5

    .line 92
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 93
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/SubscriptionState;->setReasonCode(Ljava/lang/String;)V

    goto/16 :goto_115

    .line 94
    :cond_7b
    const-string v5, "expires"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 95
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 98
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    move-object v2, v5

    .line 99
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5
    :try_end_9d
    .catchall {:try_start_10 .. :try_end_9d} :catchall_124

    move-object v4, v5

    .line 101
    :try_start_9e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 102
    .local v5, "expires":I
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/SubscriptionState;->setExpires(I)V
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_a5} :catch_b0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_9e .. :try_end_a5} :catch_a6
    .catchall {:try_start_9e .. :try_end_a5} :catchall_124

    .line 107
    .end local v5    # "expires":I
    goto :goto_115

    .line 105
    :catch_a6
    move-exception v3

    .line 106
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_a7
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    throw v5

    .line 103
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    :catch_b0
    move-exception v3

    .line 104
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    throw v5

    .line 108
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    :cond_ba
    const-string v5, "retry-after"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 109
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 110
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 111
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 112
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    move-object v2, v5

    .line 113
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5
    :try_end_dc
    .catchall {:try_start_a7 .. :try_end_dc} :catchall_124

    move-object v4, v5

    .line 115
    :try_start_dd
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 116
    .local v5, "retryAfter":I
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/SubscriptionState;->setRetryAfter(I)V
    :try_end_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_e4} :catch_ef
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_dd .. :try_end_e4} :catch_e5
    .catchall {:try_start_dd .. :try_end_e4} :catchall_124

    .line 121
    .end local v5    # "retryAfter":I
    goto :goto_115

    .line 119
    :catch_e5
    move-exception v3

    .line 120
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_e6
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    throw v5

    .line 117
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    :catch_ef
    move-exception v3

    .line 118
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    throw v5

    .line 123
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/SubscriptionStateParser;
    :cond_f9
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 124
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 125
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 126
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 127
    .local v5, "secondToken":Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "secondValue":Ljava/lang/String;
    invoke-virtual {v0, v4, v6}, Lgov/nist/javax/sip/header/SubscriptionState;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v5    # "secondToken":Lgov/nist/core/Token;
    .end local v6    # "secondValue":Ljava/lang/String;
    :goto_115
    iget-object v5, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_11a
    .catchall {:try_start_e6 .. :try_end_11a} :catchall_124

    .line 131
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_2c

    .line 133
    .end local v2    # "token":Lgov/nist/core/Token;
    :cond_11c
    sget-boolean v2, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    if-eqz v2, :cond_123

    .line 134
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    .line 137
    :cond_123
    return-object v0

    .line 133
    :catchall_124
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    if-eqz v3, :cond_12c

    .line 134
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    .line 135
    :cond_12c
    throw v2
.end method

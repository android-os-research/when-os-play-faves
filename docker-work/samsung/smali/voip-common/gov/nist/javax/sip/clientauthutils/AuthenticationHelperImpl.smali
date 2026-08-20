.class public Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
.super Ljava/lang/Object;
.source "AuthenticationHelperImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;


# instance fields
.field private greylist accountManager:Ljava/lang/Object;

.field private greylist cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

.field private greylist headerFactory:Ljavax/sip/header/HeaderFactory;

.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field greylist timer:Ljava/util/Timer;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V
    .registers 6
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 98
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 99
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V
    .registers 6
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 112
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 113
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 115
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 116
    return-void
.end method

.method private greylist getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;
    .registers 22
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    .line 364
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 368
    .local v0, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "qopList":Ljava/lang/String;
    if-eqz v2, :cond_c

    const-string v3, "auth"

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    .line 370
    .local v3, "qop":Ljava/lang/String;
    :goto_d
    const-string v14, "00000001"

    .line 371
    .local v14, "nc_value":Ljava/lang/String;
    const-string v15, "xyz"

    .line 373
    .local v15, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getHashUserDomainPassword()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 376
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    .line 373
    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v3

    invoke-static/range {v4 .. v13}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .end local v0    # "response":Ljava/lang/String;
    .local v4, "response":Ljava/lang/String;
    const/4 v5, 0x0

    .line 380
    .local v5, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v6, p4

    :try_start_33
    instance-of v0, v6, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v0, :cond_43

    .line 381
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 382
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 381
    invoke-interface {v0, v7}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v0

    move-object v5, v0

    .end local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v0, "authorization":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_4e

    .line 384
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_43
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v0

    .end local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object v5, v0

    .line 387
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :goto_4e
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 388
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 389
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 390
    const-string v0, "uri"
    :try_end_65
    .catch Ljava/text/ParseException; {:try_start_33 .. :try_end_65} :catch_9d

    move-object/from16 v7, p2

    :try_start_67
    invoke-interface {v5, v0, v7}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-interface {v5, v4}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 392
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 393
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 396
    :cond_7a
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 397
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 401
    :cond_87
    if-eqz v3, :cond_96

    .line 402
    invoke-interface {v5, v3}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 403
    invoke-interface {v5, v15}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 404
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 407
    :cond_96
    invoke-interface {v5, v4}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/text/ParseException; {:try_start_67 .. :try_end_99} :catch_9b

    .line 411
    nop

    .line 413
    return-object v5

    .line 409
    :catch_9b
    move-exception v0

    goto :goto_a0

    :catch_9d
    move-exception v0

    move-object/from16 v7, p2

    .line 410
    .local v0, "ex":Ljava/text/ParseException;
    :goto_a0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Failed to create an authorization header!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private greylist getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;
    .registers 25
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    .line 297
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 301
    .local v0, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "qopList":Ljava/lang/String;
    if-eqz v2, :cond_c

    const-string v3, "auth"

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    .line 303
    .local v3, "qop":Ljava/lang/String;
    :goto_d
    const-string v16, "00000001"

    .line 304
    .local v16, "nc_value":Ljava/lang/String;
    const-string v15, "xyz"

    .line 306
    .local v15, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 310
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v17

    .line 306
    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object v14, v3

    move-object/from16 v18, v2

    move-object v2, v15

    .end local v15    # "cnonce":Ljava/lang/String;
    .local v2, "cnonce":Ljava/lang/String;
    .local v18, "qopList":Ljava/lang/String;
    move-object/from16 v15, v17

    invoke-static/range {v4 .. v15}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .end local v0    # "response":Ljava/lang/String;
    .local v4, "response":Ljava/lang/String;
    const/4 v5, 0x0

    .line 314
    .local v5, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v6, p4

    :try_start_41
    instance-of v0, v6, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v0, :cond_51

    .line 315
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 316
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-interface {v0, v7}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v0

    move-object v5, v0

    .end local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v0, "authorization":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_5c

    .line 318
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_51
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v0

    .end local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object v5, v0

    .line 321
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v5    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :goto_5c
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 322
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 323
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 324
    const-string v0, "uri"
    :try_end_73
    .catch Ljava/text/ParseException; {:try_start_41 .. :try_end_73} :catch_ab

    move-object/from16 v7, p2

    :try_start_75
    invoke-interface {v5, v0, v7}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface {v5, v4}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 326
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 327
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 330
    :cond_88
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 331
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 335
    :cond_95
    if-eqz v3, :cond_a4

    .line 336
    invoke-interface {v5, v3}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 337
    invoke-interface {v5, v2}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 338
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 341
    :cond_a4
    invoke-interface {v5, v4}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/text/ParseException; {:try_start_75 .. :try_end_a7} :catch_a9

    .line 345
    nop

    .line 347
    return-object v5

    .line 343
    :catch_a9
    move-exception v0

    goto :goto_ae

    :catch_ab
    move-exception v0

    move-object/from16 v7, p2

    .line 344
    .local v0, "ex":Ljava/text/ParseException;
    :goto_ae
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Failed to create an authorization header!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private greylist removeBranchID(Ljavax/sip/message/Request;)V
    .registers 4
    .param p1, "request"    # Ljavax/sip/message/Request;

    .line 424
    const-string v0, "Via"

    invoke-interface {p1, v0}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 426
    .local v0, "viaHeader":Ljavax/sip/header/ViaHeader;
    const-string v1, "branch"

    invoke-interface {v0, v1}, Ljavax/sip/header/ViaHeader;->removeParameter(Ljava/lang/String;)V

    .line 428
    return-void
.end method


# virtual methods
.method public greylist handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;
    .registers 27
    .param p1, "challenge"    # Ljavax/sip/message/Response;
    .param p2, "challengedTransaction"    # Ljavax/sip/ClientTransaction;
    .param p3, "transactionCreator"    # Ljavax/sip/SipProvider;
    .param p4, "cacheTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    .line 129
    :try_start_8
    iget-object v0, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 130
    iget-object v0, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChallenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_2c
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v11, v0

    .line 135
    .local v11, "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v0, 0x0

    .line 141
    .local v0, "reoriginatedRequest":Ljavax/sip/message/Request;
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_88

    .line 142
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 143
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v2, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v1, v2, :cond_4d

    goto :goto_88

    .line 151
    :cond_4d
    nop

    .line 152
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v1

    move-object v0, v1

    .line 153
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaderNames()Ljava/util/ListIterator;

    move-result-object v1

    .line 154
    .local v1, "headerNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, "headerName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 157
    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v3

    .line 158
    .local v3, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    :goto_75
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 159
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/Header;

    invoke-interface {v0, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto :goto_75

    .line 162
    .end local v2    # "headerName":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    :cond_85
    goto :goto_5f

    .line 154
    :cond_86
    move-object v10, v0

    goto :goto_90

    .line 144
    .end local v1    # "headerNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_88
    :goto_88
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPRequest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/message/Request;

    move-object v0, v1

    move-object v10, v0

    .line 169
    .end local v0    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .local v10, "reoriginatedRequest":Ljavax/sip/message/Request;
    :goto_90
    invoke-direct {v12, v10}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->removeBranchID(Ljavax/sip/message/Request;)V

    .line 171
    if-eqz v13, :cond_273

    if-eqz v10, :cond_273

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "authHeaders":Ljava/util/ListIterator;
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_aa

    .line 178
    const-string v1, "WWW-Authenticate"

    invoke-interface {v13, v1}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    move-object/from16 v16, v0

    goto :goto_bb

    .line 179
    :cond_aa
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0x197

    if-ne v1, v2, :cond_269

    .line 180
    const-string v1, "Proxy-Authenticate"

    invoke-interface {v13, v1}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    move-object/from16 v16, v0

    .line 185
    .end local v0    # "authHeaders":Ljava/util/ListIterator;
    .local v16, "authHeaders":Ljava/util/ListIterator;
    :goto_bb
    if-eqz v16, :cond_25f

    .line 192
    const-string v0, "Authorization"

    invoke-interface {v10, v0}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 193
    const-string v0, "Proxy-Authorization"

    invoke-interface {v10, v0}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 199
    const-string v0, "CSeq"

    invoke-interface {v10, v0}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;
    :try_end_cf
    .catch Ljavax/sip/SipException; {:try_start_8 .. :try_end_cf} :catch_28f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_cf} :catch_27d

    move-object v9, v0

    .line 201
    .local v9, "cSeq":Ljavax/sip/header/CSeqHeader;
    :try_start_d0
    invoke-interface {v9}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-interface {v9, v0, v1}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_da
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_d0 .. :try_end_da} :catch_23e
    .catch Ljavax/sip/SipException; {:try_start_d0 .. :try_end_da} :catch_28f
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_da} :catch_27d

    .line 205
    nop

    .line 211
    :try_start_db
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    if-nez v0, :cond_121

    .line 212
    move-object v0, v14

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v0

    .line 213
    .local v0, "hop":Ljavax/sip/address/Hop;
    invoke-interface {v10}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v1

    check-cast v1, Ljavax/sip/address/SipURI;

    .line 215
    .local v1, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v0}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_113

    iget-object v2, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 216
    invoke-virtual {v2, v11}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_113

    .line 218
    invoke-interface {v0}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/address/SipURI;->setMAddrParam(Ljava/lang/String;)V

    .line 219
    :cond_113
    invoke-interface {v0}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_121

    invoke-interface {v0}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    invoke-interface {v1, v2}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 221
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .end local v1    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_121
    nop

    .line 222
    move-object/from16 v8, p3

    invoke-interface {v8, v10}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 224
    .local v0, "retryTran":Ljavax/sip/ClientTransaction;
    const/4 v1, 0x0

    .line 225
    .local v1, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/SipURI;

    move-object/from16 v17, v2

    .line 226
    .local v17, "requestUri":Ljavax/sip/address/SipURI;
    :goto_135
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 227
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljavax/sip/header/WWWAuthenticateHeader;

    .line 228
    .end local v1    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .local v5, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 229
    .local v7, "realm":Ljava/lang/String;
    const/16 v18, 0x0

    .line 231
    .local v18, "authorization":Ljavax/sip/header/AuthorizationHeader;
    iget-object v1, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    instance-of v2, v1, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    :try_end_14d
    .catch Ljavax/sip/SipException; {:try_start_db .. :try_end_14d} :catch_28f
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_14d} :catch_27d

    const-string v3, ""

    if-eqz v2, :cond_191

    .line 232
    :try_start_151
    check-cast v1, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    .line 233
    invoke-interface {v1, v14, v7}, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;->getCredentialHash(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    move-result-object v6

    .line 234
    .local v6, "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    invoke-interface {v10}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v1

    move-object/from16 v19, v1

    .line 235
    .local v19, "uri":Ljavax/sip/address/URI;
    invoke-interface {v6}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 236
    .local v20, "sipDomain":Ljava/lang/String;
    nop

    .line 237
    invoke-interface {v10}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v19 .. v19}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-interface {v10}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_175

    move-object/from16 v21, v3

    goto :goto_180

    :cond_175
    new-instance v1, Ljava/lang/String;

    .line 239
    invoke-interface {v10}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v21, v1

    .line 236
    :goto_180
    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v4, v21

    invoke-direct/range {v1 .. v6}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v1

    .line 240
    .end local v6    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v18    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v19    # "uri":Ljavax/sip/address/URI;
    .local v1, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v19, v7

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v6, v20

    goto :goto_1cf

    .line 241
    .end local v1    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v20    # "sipDomain":Ljava/lang/String;
    .restart local v18    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_191
    check-cast v1, Lgov/nist/javax/sip/clientauthutils/AccountManager;

    invoke-interface {v1, v14, v7}, Lgov/nist/javax/sip/clientauthutils/AccountManager;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    move-result-object v1

    .line 242
    .local v1, "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    invoke-interface {v1}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getSipDomain()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    .line 243
    .restart local v20    # "sipDomain":Ljava/lang/String;
    if-eqz v1, :cond_209

    .line 250
    nop

    .line 251
    invoke-interface {v10}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-interface {v10}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1b3

    goto :goto_1bc

    :cond_1b3
    new-instance v3, Ljava/lang/String;

    .line 253
    invoke-interface {v10}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 250
    :goto_1bc
    move-object/from16 v6, p0

    move-object/from16 v19, v7

    .end local v7    # "realm":Ljava/lang/String;
    .local v19, "realm":Ljava/lang/String;
    move-object v7, v2

    move-object v8, v4

    move-object v2, v9

    .end local v9    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .local v2, "cSeq":Ljavax/sip/header/CSeqHeader;
    move-object v9, v3

    move-object v3, v10

    .end local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .local v3, "reoriginatedRequest":Ljavax/sip/message/Request;
    move-object v10, v5

    move-object v4, v11

    .end local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .local v4, "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object v11, v1

    invoke-direct/range {v6 .. v11}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v6

    move-object v1, v6

    move-object/from16 v6, v20

    .line 255
    .end local v18    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v20    # "sipDomain":Ljava/lang/String;
    .local v1, "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v6, "sipDomain":Ljava/lang/String;
    :goto_1cf
    iget-object v7, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1f7

    .line 256
    iget-object v7, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created authorization header: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 259
    :cond_1f7
    if-eqz v15, :cond_1fe

    .line 260
    iget-object v7, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v7, v6, v1, v15}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V

    .line 263
    :cond_1fe
    invoke-interface {v3, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 264
    .end local v1    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v6    # "sipDomain":Ljava/lang/String;
    .end local v19    # "realm":Ljava/lang/String;
    move-object/from16 v8, p3

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v1, v5

    goto/16 :goto_135

    .line 244
    .end local v2    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .local v1, "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v9    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v18    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v20    # "sipDomain":Ljava/lang/String;
    :cond_209
    move-object/from16 v19, v7

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    .end local v7    # "realm":Ljava/lang/String;
    .end local v9    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v2    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v19    # "realm":Ljava/lang/String;
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Cannot find user creds for the given user name and realm"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v6

    .line 266
    .end local v2    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v18    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v19    # "realm":Ljava/lang/String;
    .end local v20    # "sipDomain":Ljava/lang/String;
    .local v1, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v9    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_216
    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    .end local v9    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v2    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v5, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_23d

    .line 267
    iget-object v5, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Returning authorization transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 270
    :cond_23d
    return-object v0

    .line 202
    .end local v0    # "retryTran":Ljavax/sip/ClientTransaction;
    .end local v1    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v2    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v17    # "requestUri":Ljavax/sip/address/SipURI;
    .restart local v9    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :catch_23e
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    .line 203
    .end local v9    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v2    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    new-instance v1, Ljavax/sip/SipException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CSeq -- could not increment : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 204
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v1

    .line 186
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    .end local v2    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_25f
    move-object v3, v10

    move-object v4, v11

    .end local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not find WWWAuthenticate or ProxyAuthenticate headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v0

    .line 182
    .end local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v16    # "authHeaders":Ljava/util/ListIterator;
    .local v0, "authHeaders":Ljava/util/ListIterator;
    .restart local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_269
    move-object v3, v10

    move-object v4, v11

    .end local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected status code "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v1

    .line 171
    .end local v0    # "authHeaders":Ljava/util/ListIterator;
    .end local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_273
    move-object v3, v10

    move-object v4, v11

    .line 172
    .end local v10    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v11    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "A null argument was passed to handle challenge."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v0
    :try_end_27d
    .catch Ljavax/sip/SipException; {:try_start_151 .. :try_end_27d} :catch_28f
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_27d} :catch_27d

    .line 273
    .end local v3    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v4    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :catch_27d
    move-exception v0

    .line 274
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, v12, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unexpected exception "

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 275
    new-instance v1, Ljavax/sip/SipException;

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 271
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_28f
    move-exception v0

    .line 272
    .local v0, "ex":Ljavax/sip/SipException;
    throw v0
.end method

.method public greylist removeCachedAuthenticationHeaders(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 462
    if-eqz p1, :cond_8

    .line 464
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->removeAuthenticationHeader(Ljava/lang/String;)V

    .line 466
    return-void

    .line 463
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null callId argument "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setAuthenticationHeaders(Ljavax/sip/message/Request;)V
    .registers 8
    .param p1, "request"    # Ljavax/sip/message/Request;

    .line 436
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 438
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "callId":Ljava/lang/String;
    const-string v2, "Authorization"

    invoke-interface {p1, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 442
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 443
    .local v2, "authHeaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v2, :cond_3d

    .line 444
    iget-object v3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 445
    iget-object v3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find authentication headers for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 447
    :cond_3c
    return-void

    .line 450
    :cond_3d
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/AuthorizationHeader;

    .line 451
    .local v4, "authHeader":Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {p1, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 452
    .end local v4    # "authHeader":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_41

    .line 454
    :cond_51
    return-void
.end method

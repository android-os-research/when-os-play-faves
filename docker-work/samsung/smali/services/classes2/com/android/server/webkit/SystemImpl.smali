.class public Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "SystemImpl.java"

# interfaces
.implements Lcom/android/server/webkit/SystemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/SystemImpl$LazyHolder;
    }
.end annotation


# static fields
.field public static final PACKAGE_FLAGS:I = 0x104004c0

.field public static final TAG:Ljava/lang/String; = "SystemImpl"

.field public static final TAG_AVAILABILITY:Ljava/lang/String; = "availableByDefault"

.field public static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final TAG_FALLBACK:Ljava/lang/String; = "isFallback"

.field public static final TAG_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final TAG_START:Ljava/lang/String; = "webviewproviders"

.field public static final TAG_WEBVIEW_PROVIDER:Ljava/lang/String; = "webviewprovider"


# instance fields
.field public final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    const-string/jumbo v0, "true"

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 79
    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x117000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_1b} :catch_ca
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_ca
    .catchall {:try_start_c .. :try_end_1b} :catchall_c8

    :try_start_1b
    const-string/jumbo v4, "webviewproviders"

    .line 81
    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    .line 83
    :goto_23
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 84
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_2a} :catch_c5
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_c5
    .catchall {:try_start_1b .. :try_end_2a} :catchall_c2

    if-nez v6, :cond_48

    .line 129
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v4, :cond_40

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebViewProviderInfo;

    iput-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-void

    .line 132
    :cond_40
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "There must be at least one WebView package that is available by default"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    :try_start_48
    const-string/jumbo v7, "webviewprovider"

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const-string/jumbo v6, "packageName"

    .line 89
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b1

    const-string v6, "description"

    .line 94
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a9

    const-string v6, "availableByDefault"

    .line 100
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v6, "isFallback"

    .line 102
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 103
    new-instance v6, Landroid/webkit/WebViewProviderInfo;

    .line 105
    invoke-static {v3}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .line 106
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v7, :cond_9e

    add-int/lit8 v5, v5, 0x1

    .line 108
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v7, :cond_96

    const/4 v7, 0x1

    if-gt v5, v7, :cond_8e

    goto :goto_9e

    .line 113
    :cond_8e
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "There can be at most one WebView fallback package."

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_96
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Each WebView fallback package must be available by default."

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_9e
    :goto_9e
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v7, :cond_a4

    add-int/lit8 v4, v4, 0x1

    .line 120
    :cond_a4
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 96
    :cond_a9
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WebView provider in framework resources missing description"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_b1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WebView provider in framework resources missing package name"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_b9
    sget-object v6, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v7, "Found an element that is not a WebView provider"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_c0} :catch_c5
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_c0} :catch_c5
    .catchall {:try_start_48 .. :try_end_c0} :catchall_c2

    goto/16 :goto_23

    :catchall_c2
    move-exception p0

    move-object v2, v3

    goto :goto_e2

    :catch_c5
    move-exception p0

    move-object v2, v3

    goto :goto_cb

    :catchall_c8
    move-exception p0

    goto :goto_e2

    :catch_ca
    move-exception p0

    .line 127
    :goto_cb
    :try_start_cb
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when parsing WebView config "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e2
    .catchall {:try_start_cb .. :try_end_e2} :catchall_c8

    :goto_e2
    if-eqz v2, :cond_e7

    .line 129
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 130
    :cond_e7
    throw p0
.end method

.method public synthetic constructor <init>(Lcom/android/server/webkit/SystemImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/webkit/SystemImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/webkit/SystemImpl;
    .registers 1

    .line 70
    invoke-static {}, Lcom/android/server/webkit/SystemImpl$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/webkit/SystemImpl;

    move-result-object v0

    return-object v0
.end method

.method public static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 160
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 161
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 163
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 166
    :cond_24
    sget-object v2, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v3, "Found an element in a webview provider that is not a signature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 169
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    const-string/jumbo v0, "user"

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 202
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 203
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZI)V

    goto :goto_11

    :cond_23
    return-void
.end method

.method public final enablePackageForUser(Ljava/lang/String;ZI)V
    .registers 10

    .line 209
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p2, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    const/4 p0, 0x3

    :goto_9
    move v2, p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_43

    :catch_12
    move-exception p0

    .line 215
    sget-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_24

    const-string p2, "enable "

    goto :goto_26

    :cond_24
    const-string p2, "disable "

    :goto_26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void
.end method

.method public ensureZygoteStarted()V
    .registers 1

    .line 257
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    return-void
.end method

.method public getFactoryPackageVersion(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x200000

    .line 149
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getMultiProcessSetting(Landroid/content/Context;)I
    .registers 3

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "webview_multiprocess"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 229
    iget-object p1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v0, 0x104004c0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewProviderInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object p0, p2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const p2, 0x104004c0

    invoke-static {p1, p0, p2}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "webview_provider"

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-object p0
.end method

.method public isMultiProcessDefaultEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public killPackageDependents(Ljava/lang/String;)V
    .registers 3

    .line 193
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method public notifyZygote(Z)V
    .registers 2

    .line 252
    invoke-static {p1}, Landroid/webkit/WebViewZygote;->setMultiprocessEnabled(Z)V

    return-void
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 2

    .line 174
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result p0

    return p0
.end method

.method public setMultiProcessSetting(Landroid/content/Context;I)V
    .registers 3

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "webview_multiprocess"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public systemIsDebuggable()Z
    .registers 1

    .line 222
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return p0
.end method

.method public updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p2, :cond_8

    const-string p2, ""

    :cond_8
    const-string/jumbo p1, "webview_provider"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

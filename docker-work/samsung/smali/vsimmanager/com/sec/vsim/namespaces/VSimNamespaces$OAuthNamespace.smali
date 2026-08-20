.class public final Lcom/sec/vsim/namespaces/VSimNamespaces$OAuthNamespace;
.super Ljava/lang/Object;
.source "VSimNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/VSimNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuthNamespace"
.end annotation


# static fields
.field public static final ACTION_OAUTHCANCEL:Ljava/lang/String; = "com.sec.internal.vsim.action.OAUTH_CANCEL"

.field public static final ACTION_OAUTHLOGIN:Ljava/lang/String; = "com.sec.internal.vsim.action.OAUTH_LOGIN"

.field public static final ACTION_OAUTHRESULT:Ljava/lang/String; = "com.sec.internal.vsim.action.OAUTH_RESULT"

.field public static final OAUTH_AUTHORIZATIONCODE:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_AUTHORIZATION_CODE"

.field public static final OAUTH_CODESTRING:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_CODE_STRING"

.field public static final OAUTH_ERRORSTRING:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_ERROR_STRING"

.field public static final OAUTH_ERRORTYPE:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_ERROR_TYPE"

.field public static final OAUTH_HTTPHEADERS:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_HTTP_HEADERS"

.field public static final OAUTH_MSISDN_LOGIN_REQUESTED:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_MSISDN_LOGIN_REQUESTED"

.field public static final OAUTH_SESSION_COOKIE:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_SESSION_COOKIE"

.field public static final OAUTH_URL:Ljava/lang/String; = "com.sec.internal.vsim.OAUTH_URL"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

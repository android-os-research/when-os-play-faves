.class public Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrowserProxyCache"
.end annotation


# instance fields
.field public mAdminUid:I

.field public final mContainerId:I

.field public mProxySetting:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmProxySetting(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    .line 102
    iput p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const/4 p1, -0x1

    .line 103
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 115
    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 116
    iput v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public isAlreadySet()Z
    .registers 2

    .line 122
    iget p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isOwner(I)Z
    .registers 2

    .line 135
    iget p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public setProxy(ILjava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 109
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 110
    iput-object p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    :cond_6
    return-void
.end method

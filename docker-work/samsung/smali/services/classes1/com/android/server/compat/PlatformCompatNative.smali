.class public Lcom/android/server/compat/PlatformCompatNative;
.super Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.source "PlatformCompatNative.java"


# instance fields
.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    return-void
.end method


# virtual methods
.method public isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .registers 5

    .line 46
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledByUid(JI)Z
    .registers 4

    .line 51
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0

    return p0
.end method

.method public reportChangeByPackageName(JLjava/lang/String;I)V
    .registers 5

    .line 35
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V

    return-void
.end method

.method public reportChangeByUid(JI)V
    .registers 4

    .line 40
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->reportChangeByUid(JI)V

    return-void
.end method

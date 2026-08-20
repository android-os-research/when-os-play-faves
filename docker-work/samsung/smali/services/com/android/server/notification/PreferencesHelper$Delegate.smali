.class public Lcom/android/server/notification/PreferencesHelper$Delegate;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# static fields
.field public static final DEFAULT_ENABLED:Z = true

.field public static final DEFAULT_USER_ALLOWED:Z = true


# instance fields
.field public mEnabled:Z

.field public mPkg:Ljava/lang/String;

.field public mUid:I

.field public mUserAllowed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5

    .line 3594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3595
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    .line 3596
    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 3597
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 3598
    iput-boolean p4, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    return-void
.end method


# virtual methods
.method public isAllowed(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    const/16 v1, -0x2710

    if-ne p2, v1, :cond_8

    goto :goto_1d

    .line 3605
    :cond_8
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    if-ne p2, p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz p1, :cond_1d

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0
.end method

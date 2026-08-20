.class public Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingVerifiedResult"
.end annotation


# instance fields
.field public final mAuthToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

.field public final mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

.field public final mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V
    .registers 5

    .line 7211
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7212
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mAuthToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 7213
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 7214
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    return-void
.end method

.class Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;
.super Ljava/lang/Object;
.source "ImsServiceControllerCompat.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsDeathRecipient"
.end annotation


# instance fields
.field private blacklist mComoponentName:Landroid/content/ComponentName;

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V
    .registers 4

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->mComoponentName:Landroid/content/ComponentName;

    .line 67
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsService("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->mComoponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") died. Restarting..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSCCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->mComoponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    return-void
.end method

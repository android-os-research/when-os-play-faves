.class Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$1;->this$0:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.samsung.android.mobiledoctor.GETAPMDATAFILES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_36

    .line 143
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$1;->this$0:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_36
    return-void
.end method

.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;
.super Landroid/os/Handler;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    .line 957
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 960
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_23

    .line 963
    :cond_6
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.sec.android.app.voicerecorder.service"

    const-string v1, "com.sec.android.app.voicerecorder.service.VoiceRecorderService"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.voicerecorder.HIDENOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 966
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_23
    return-void
.end method

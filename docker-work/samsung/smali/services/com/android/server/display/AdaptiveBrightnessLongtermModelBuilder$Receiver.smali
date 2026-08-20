.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 2

    .line 1327
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 1334
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1335
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stop()V

    .line 1336
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mscheduleWriteAdaptiveBrightnessLongtermModelBuilderState(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_80

    :cond_31
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 1337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string/jumbo p1, "level"

    const/4 v0, -0x1

    .line 1338
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    const-string/jumbo v2, "scale"

    .line 1339
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p1, v0, :cond_80

    if-eqz p2, :cond_80

    .line 1341
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mbatteryLevelChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;II)V

    goto :goto_80

    :cond_53
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 1343
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 1344
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_80

    :cond_6a
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 1345
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1346
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_80
    :goto_80
    return-void
.end method

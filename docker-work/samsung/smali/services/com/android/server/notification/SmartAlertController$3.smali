.class public Lcom/android/server/notification/SmartAlertController$3;
.super Ljava/lang/Thread;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmMotionRegistered(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    const-string v1, "SmartAlertController"

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmMotionEnabled(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmSmartAlertMotionManager(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 170
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmSmartAlertMotionManager(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v2}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmSmartAlertMotionListener(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 172
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmMotionRegistered(Lcom/android/server/notification/SmartAlertController;Z)V

    const-string p0, "SmartAlert - registerListener"

    .line 173
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_36
    const-string p0, "SmartAlert - mSmartAlertMotionManager is null"

    .line 175
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_3c
    const-string p0, "SmartAlert - already registered or Setting disabled"

    .line 178
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method

.class public Lcom/android/server/notification/EasyMuteController$2;
.super Landroid/app/INotificationPlayerOnCompletionListener$Stub;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/EasyMuteController;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Landroid/app/INotificationPlayerOnCompletionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .registers 3

    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "onCompletion"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmIsRegister(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 148
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_15
    return-void
.end method

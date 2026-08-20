.class public Lcom/android/server/EntropyMixer$1;
.super Landroid/os/Handler;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method public constructor <init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 92
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const-string p0, "EntropyMixer"

    const-string p1, "Will not process invalid message"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_d
    iget-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {p1}, Lcom/android/server/EntropyMixer;->-$$Nest$mupdateSeedFile(Lcom/android/server/EntropyMixer;)V

    .line 97
    iget-object p0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {p0}, Lcom/android/server/EntropyMixer;->-$$Nest$mscheduleSeedUpdater(Lcom/android/server/EntropyMixer;)V

    return-void
.end method

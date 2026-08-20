.class public final Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;
.super Landroid/os/Handler;
.source "CoverDisabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverDisabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoverDisablerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverDisabler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V
    .registers 4

    .line 69
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_11

    .line 77
    :cond_5
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {p0, v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->-$$Nest$mhandleDisableCoverManagerLocked(Lcom/android/server/sepunion/cover/CoverDisabler;Z)V

    :goto_11
    return-void
.end method

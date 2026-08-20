.class public Lcom/android/commands/monkey/MonkeyNoopEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyNoopEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 7
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 37
    const/4 v0, 0x1

    if-le p3, v0, :cond_a

    .line 38
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v2, "NOOP"

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 40
    :cond_a
    return v0
.end method

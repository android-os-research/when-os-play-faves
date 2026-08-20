.class public Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;
.super Ljava/lang/Object;
.source "AppPrelaunchShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Args"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public stage:I

.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 74
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->stage:I

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;)V

    return-void
.end method

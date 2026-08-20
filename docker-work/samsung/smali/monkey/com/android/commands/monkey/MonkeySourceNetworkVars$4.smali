.class Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 2

    .line 119
    sget-object v0, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_6
    sget-object v0, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

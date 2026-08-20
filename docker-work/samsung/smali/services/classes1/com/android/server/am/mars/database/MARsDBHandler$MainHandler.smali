.class public Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
.super Landroid/os/Handler;
.source "MARsDBHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBHandler;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

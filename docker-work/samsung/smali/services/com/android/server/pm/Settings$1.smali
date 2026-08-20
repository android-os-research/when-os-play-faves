.class public Lcom/android/server/pm/Settings$1;
.super Lcom/android/server/utils/Watcher;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 2

    .line 571
    iput-object p1, p0, Lcom/android/server/pm/Settings$1;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 574
    iget-object p0, p0, Lcom/android/server/pm/Settings$1;->this$0:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

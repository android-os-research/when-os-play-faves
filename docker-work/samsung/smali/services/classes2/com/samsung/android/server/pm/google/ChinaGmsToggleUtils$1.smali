.class public Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;
.super Landroid/database/ContentObserver;
.source "ChinaGmsToggleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->registerContentObserverForGoogleControlCore(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;Landroid/os/Handler;)V
    .registers 3

    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;->this$0:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;->this$0:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledSetting(I)V

    return-void
.end method

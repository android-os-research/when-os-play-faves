.class public Lcom/android/server/WiredAccessoryManager$1;
.super Landroid/database/ContentObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 126
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 127
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mhandleBikeMode(Lcom/android/server/WiredAccessoryManager;)V

    return-void
.end method

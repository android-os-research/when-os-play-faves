.class public Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;
.super Landroid/database/ContentObserver;
.source "LockScreenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->-$$Nest$mgetLockClockFace(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;)V

    return-void
.end method

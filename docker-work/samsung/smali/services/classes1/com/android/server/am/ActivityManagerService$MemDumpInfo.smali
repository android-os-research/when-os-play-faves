.class public Lcom/android/server/am/ActivityManagerService$MemDumpInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemDumpInfo"
.end annotation


# instance fields
.field public cachedProcessCount:J

.field public cachedSlotCount:J

.field public cpuTime:J

.field public emptyProcessCount:J

.field public emptySlotCount:J

.field public hasDexRunning:I

.field public hasExtra:Z

.field public label:Ljava/lang/String;

.field public memtrack:J

.field public procName:Ljava/lang/String;

.field public procNum:I

.field public pss:J

.field public rss:J

.field public swap_out:J

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 862
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

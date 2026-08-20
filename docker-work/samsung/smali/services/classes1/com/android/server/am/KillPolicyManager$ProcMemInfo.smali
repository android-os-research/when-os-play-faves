.class public Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcMemInfo"
.end annotation


# instance fields
.field public activeFile:I

.field public cached:I

.field public inactiveFile:I

.field public kReclaimable:I

.field public kgslReclaimed:I

.field public kgslSharedMem:I

.field public kgslShmemUsage:I

.field public memAvailable:I

.field public memFree:I

.field public memTotal:I

.field public rbinCached:I

.field public rbinFree:I

.field public sReclaimable:I

.field public sUnreclaim:I

.field public swapFree:I

.field public system:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public vmallocUsed:I

.field public zram:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 2

    .line 1941
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

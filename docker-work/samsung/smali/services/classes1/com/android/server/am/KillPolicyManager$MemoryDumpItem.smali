.class public Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryDumpItem"
.end annotation


# instance fields
.field public mDumpSize:J

.field public mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V
    .registers 5

    .line 3797
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3798
    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 3799
    iput-object p4, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-void
.end method

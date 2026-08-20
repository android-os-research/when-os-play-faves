.class public Lcom/android/server/am/AppProfiler$CpuBinder;
.super Landroid/os/Binder;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpuBinder"
.end annotation


# instance fields
.field public final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .registers 2

    .line 2204
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2205
    new-instance p1, Lcom/android/server/am/AppProfiler$CpuBinder$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppProfiler$CpuBinder$1;-><init>(Lcom/android/server/am/AppProfiler$CpuBinder;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 2227
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

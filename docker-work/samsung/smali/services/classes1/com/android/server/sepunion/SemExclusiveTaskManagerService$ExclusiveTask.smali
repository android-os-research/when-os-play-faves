.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExclusiveTask"
.end annotation


# instance fields
.field public manipulatedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetname(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputname(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 2

    .line 719
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    return-void
.end method

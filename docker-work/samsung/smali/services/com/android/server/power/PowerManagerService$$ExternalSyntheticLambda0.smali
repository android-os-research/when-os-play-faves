.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/power/PowerManagerService;->$r8$lambda$HiFSyYDWuOXyFPRND12F7slblIs(Lcom/android/server/power/PowerManagerService;IILjava/lang/String;)V

    return-void
.end method

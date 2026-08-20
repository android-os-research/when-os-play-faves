.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/PowerManagerService;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$1:I

    iget p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/power/PowerManagerService;->$r8$lambda$B-71D7KbpmcPbYvd_1lAo7CA0gw(Lcom/android/server/power/PowerManagerService;II)V

    return-void
.end method

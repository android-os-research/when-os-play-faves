.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Lcom/android/server/display/DisplayDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/display/DisplayDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/display/DisplayDevice;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$BxHWBwpZG8Xyvlzub7TU4RGpOhM(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

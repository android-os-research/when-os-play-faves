.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$Wogu778S3mmURZubIoCNylLodrY(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

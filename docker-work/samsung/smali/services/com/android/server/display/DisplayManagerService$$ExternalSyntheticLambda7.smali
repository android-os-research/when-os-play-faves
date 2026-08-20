.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/display/DisplayDevice;

    invoke-static {v0, p0, p1}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$X-DTfBNau6Kk93oHzXn-4d0dsj4(Lcom/android/server/display/DisplayManagerService;Ljava/util/List;Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

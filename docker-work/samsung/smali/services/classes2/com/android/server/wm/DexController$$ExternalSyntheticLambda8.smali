.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    invoke-static {p1}, Lcom/android/server/wm/DexController;->$r8$lambda$1XlQ66FcdrinUx_TfHF0cDeSVAU(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p0

    return p0
.end method

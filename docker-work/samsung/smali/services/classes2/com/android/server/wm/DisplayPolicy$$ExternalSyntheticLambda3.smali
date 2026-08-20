.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(II[Lcom/android/internal/view/AppearanceRegion;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$0:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$3:Z

    check-cast p1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DisplayPolicy;->$r8$lambda$6Q0A6oLdVOZMeLmtTS_MnlY9uyE(II[Lcom/android/internal/view/AppearanceRegion;ZLcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)V

    return-void
.end method

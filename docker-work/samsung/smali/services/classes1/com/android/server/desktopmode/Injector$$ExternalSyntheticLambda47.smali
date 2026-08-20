.class public final synthetic Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/Injector;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/Injector;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/desktopmode/Injector;

    iput-object p2, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/desktopmode/Injector;

    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Injector;->$r8$lambda$rjCjl-x70g6gaxBiZZBXLHTkg7s(Lcom/android/server/desktopmode/Injector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

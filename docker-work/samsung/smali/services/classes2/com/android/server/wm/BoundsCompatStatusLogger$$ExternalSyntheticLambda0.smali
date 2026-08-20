.class public final synthetic Lcom/android/server/wm/BoundsCompatStatusLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->$r8$lambda$5qPL528XG0xtFxVgGFqlF955CXc(Ljava/lang/Object;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

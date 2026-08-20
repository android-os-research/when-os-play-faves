.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-boolean p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda4;->f$0:Z

    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->$r8$lambda$IS-UMNK4LHmQ9q86O6e1QFfenZw(ZLcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

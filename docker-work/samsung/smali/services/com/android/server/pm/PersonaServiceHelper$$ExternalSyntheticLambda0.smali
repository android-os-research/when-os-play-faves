.class public final synthetic Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceHelper;->$r8$lambda$3EAV4Y8Jm7u4BSgx8C9nm5bE4DY(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

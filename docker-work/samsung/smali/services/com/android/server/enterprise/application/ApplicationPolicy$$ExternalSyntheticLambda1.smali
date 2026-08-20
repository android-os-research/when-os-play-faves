.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->$r8$lambda$HYu20GDVsoa23QIt5yklUN01Gek(Ljava/util/Map;Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;)V

    return-void
.end method

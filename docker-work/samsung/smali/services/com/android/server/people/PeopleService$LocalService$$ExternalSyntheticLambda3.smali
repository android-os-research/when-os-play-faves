.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/PeopleService$LocalService;

.field public final synthetic f$1:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/IPredictionCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iput-object p2, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$1:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$1:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/server/people/PeopleService$LocalService;->$r8$lambda$s2JMVhiEbG6f9ZHmKJDwLfEhMAQ(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V

    return-void
.end method

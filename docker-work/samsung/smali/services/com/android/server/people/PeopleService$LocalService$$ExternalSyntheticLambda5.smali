.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ParceledListSlice;

    check-cast p1, Lcom/android/server/people/SessionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/server/people/PeopleService$LocalService;->$r8$lambda$rYhNF8LHAnZ7xyh5cFDbyg6t-6I(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

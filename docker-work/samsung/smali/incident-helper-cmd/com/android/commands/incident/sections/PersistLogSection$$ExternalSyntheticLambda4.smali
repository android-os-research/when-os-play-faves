.class public final synthetic Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/commands/incident/sections/PersistLogSection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/commands/incident/sections/PersistLogSection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda4;->f$0:Lcom/android/commands/incident/sections/PersistLogSection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda4;->f$0:Lcom/android/commands/incident/sections/PersistLogSection;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/android/commands/incident/sections/PersistLogSection;->$r8$lambda$twrdK9MDtGeQ1tkLaq7mukbkOoQ(Lcom/android/commands/incident/sections/PersistLogSection;Ljava/io/File;)V

    return-void
.end method

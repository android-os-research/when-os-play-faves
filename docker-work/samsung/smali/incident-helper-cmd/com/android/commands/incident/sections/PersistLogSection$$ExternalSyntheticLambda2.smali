.class public final synthetic Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/regex/Matcher;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Matcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda2;->f$0:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda2;->f$0:Ljava/util/regex/Matcher;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/android/commands/incident/sections/PersistLogSection;->lambda$run$0(Ljava/util/regex/Matcher;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

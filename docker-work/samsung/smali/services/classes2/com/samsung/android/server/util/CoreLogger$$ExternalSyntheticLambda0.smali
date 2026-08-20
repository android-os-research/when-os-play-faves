.class public final synthetic Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/util/CoreLogger;->$r8$lambda$lleg7G6A2RGke5JOsHT8q_4SSh4(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

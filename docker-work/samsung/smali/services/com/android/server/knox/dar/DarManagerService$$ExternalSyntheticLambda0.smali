.class public final synthetic Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/DarManagerService;

.field public final synthetic f$1:Ljava/io/FileDescriptor;

.field public final synthetic f$2:Ljava/io/PrintWriter;

.field public final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/DarManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/DarManagerService;

    iput-object p2, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/DarManagerService;

    iget-object v1, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/knox/dar/DarManagerService;->$r8$lambda$hB-f3kyOzP6HslwCxkbpKdhBf7c(Lcom/android/server/knox/dar/DarManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

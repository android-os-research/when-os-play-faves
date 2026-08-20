.class public Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.super Ljava/lang/Object;
.source "PackageFeatureDebugCommand.java"


# instance fields
.field public final mCommands:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->mCommands:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adjustExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public assertPackageNamesOnly(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    aget-object p2, p2, v1

    if-eqz p2, :cond_a

    move v1, v2

    :cond_a
    if-nez v1, :cond_10

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return v1
.end method

.method public assertValidOptions(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->assertPackageNamesOnly(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCommandOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1d

    const-string p1, " ["

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " options:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    const-string v1, " [packageName]"

    .line 66
    invoke-virtual {p0, v0, p2, v1, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->getCommandOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " [packageName:packageName:...]"

    .line 68
    invoke-virtual {p0, v0, p2, v1, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->getCommandOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.class Lorg/brotli/dec/Dictionary$DataLoader;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/dec/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataLoader"
.end annotation


# static fields
.field static final OK:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/brotli/dec/Dictionary;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DictionaryData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_20

    const/4 v0, 0x1

    goto :goto_21

    :catchall_20
    const/4 v0, 0x0

    .line 38
    :goto_21
    sput-boolean v0, Lorg/brotli/dec/Dictionary$DataLoader;->OK:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

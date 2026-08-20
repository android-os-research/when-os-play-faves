.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .registers 2

    .line 3056
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    .line 3057
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 2

    .line 3075
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    .line 3093
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 4

    .line 3099
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write([C)V
    .registers 2

    .line 3081
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write([CII)V
    .registers 4

    .line 3087
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

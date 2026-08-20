.class final Lcom/stanfy/gsonxml/XmlReader$ValueRef;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueRef"
.end annotation


# instance fields
.field next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stanfy/gsonxml/XmlReader$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/stanfy/gsonxml/XmlReader$1;

    .line 688
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader$ValueRef;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

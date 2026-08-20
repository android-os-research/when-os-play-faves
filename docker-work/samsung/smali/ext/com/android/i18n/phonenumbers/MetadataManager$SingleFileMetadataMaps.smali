.class Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/MetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleFileMetadataMaps"
.end annotation


# instance fields
.field private final blacklist countryCallingCodeToMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist regionCodeToMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "regionCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .local p2, "countryCallingCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->regionCodeToMetadata:Ljava/util/Map;

    .line 160
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->countryCallingCodeToMetadata:Ljava/util/Map;

    .line 161
    return-void
.end method

.method static blacklist load(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;
    .registers 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 129
    invoke-static {p0, p1}, Lcom/android/i18n/phonenumbers/MetadataManager;->-$$Nest$smgetMetadataFromSingleFileName(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v1, "regionCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v2, "countryCallingCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 134
    .local v4, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getId()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "regionCode":Ljava/lang/String;
    const-string v6, "001"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 137
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 139
    :cond_36
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v4    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "regionCode":Ljava/lang/String;
    :goto_39
    goto :goto_12

    .line 142
    :cond_3a
    new-instance v3, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    invoke-direct {v3, v1, v2}, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v3
.end method


# virtual methods
.method blacklist get(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p1, "countryCallingCode"    # I

    .line 168
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->countryCallingCodeToMetadata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0
.end method

.method blacklist get(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->regionCodeToMetadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0
.end method

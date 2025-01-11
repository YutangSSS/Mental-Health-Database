SELECT 
    s.sid AS service_id,
    s.type AS service_type,
    p.name AS provider_name,
    p.contactinfo AS provider_contact,
    o.name AS organization_name,
    o.contactinfo AS organization_contact,
    l.address AS service_address,
    l.city AS service_city,
    l.postalcode AS postal_code,
    l.publictransportaccess AS transport_access,
    l.wheelchairaccess AS wheelchair_access,
    GROUP_CONCAT(DISTINCT lang.language SEPARATOR ', ') AS supported_languages,
    GROUP_CONCAT(DISTINCT acc.accessibilitytype SEPARATOR ', ') AS accessibility_features
FROM 
    Services s
LEFT JOIN 
    Service_Provider sp ON s.sid = sp.ServiceID
LEFT JOIN 
    Provider p ON sp.ProviderID = p.pid
LEFT JOIN 
    Organizations o ON p.OrgID = o.oid
LEFT JOIN 
    Locations l ON s.sid = l.ServiceID
LEFT JOIN 
    Language_Support ls ON s.sid = ls.ServiceID
LEFT JOIN 
    Language lang ON ls.LanguageID = lang.lid
LEFT JOIN 
    Accessibility acc ON s.sid = acc.ServiceID
WHERE 
    s.type LIKE '%psychotherapy%'
    AND l.city = 'Montreal'
GROUP BY 
    s.sid, s.type, p.name, p.contactinfo, o.name, o.contactinfo, l.address, l.city, l.postalcode, 
    l.publictransportaccess, l.wheelchairaccess;


SELECT 
    s.sid AS service_id,
    s.type AS service_type,
    s.cost AS service_cost,
    CASE 
        WHEN s.cost = 0 THEN 'Free'
        WHEN s.cost < 40 THEN 'Low-Cost'
        ELSE 'Standard Cost'
    END AS cost_category,
    o.name AS organization_name,
    l.address AS service_address,
    l.city AS service_city,
    l.postalcode AS postal_code,
    l.wheelchairaccess AS wheelchair_access,
    l.publictransportaccess AS public_transport_access,
    GROUP_CONCAT(DISTINCT lang.language SEPARATOR ', ') AS supported_languages,
    GROUP_CONCAT(DISTINCT acc.accessibilitytype SEPARATOR ', ') AS accessibility_features
FROM 
    Services s
LEFT JOIN 
    Locations l ON s.sid = l.ServiceID
LEFT JOIN 
    Organizations o ON s.sid = o.oid
LEFT JOIN 
    Language_Support ls ON s.sid = ls.ServiceID
LEFT JOIN 
    Language lang ON ls.LanguageID = lang.lid
LEFT JOIN 
    Accessibility acc ON s.sid = acc.ServiceID
WHERE 
    l.city = 'Montreal'
    AND (s.cost = 0 OR s.cost < 40)
GROUP BY 
    s.sid, s.type, s.cost, o.name, l.address, l.city, l.postalcode, l.wheelchairaccess, l.publictransportaccess;


SELECT 
    p.name AS provider_name,
    p.contactinfo AS provider_contact,
    s.type AS service_type,
    o.name AS organization_name,
    l.address AS service_address,
    l.city AS service_city
FROM 
    Provider p
JOIN 
    Service_Provider sp ON p.pid = sp.ProviderID
JOIN 
    Services s ON sp.ServiceID = s.sid
JOIN 
    Organizations o ON p.OrgID = o.oid
JOIN 
    Locations l ON s.sid = l.ServiceID
WHERE 
    s.type LIKE '%anxiety%';
    
SELECT 
    s.sid AS service_id,
    s.type AS service_type,
    s.cost AS service_cost,
    s.onlineavability AS online_availability,
    p.name AS provider_name,
    p.specialty AS provider_specialty,
    o.name AS organization_name,
    o.contactinfo AS organization_contact,
    l.address AS service_address,
    l.city AS service_city,
    l.wheelchairaccess AS wheelchair_access,
    l.publictransportaccess AS transport_access,
    GROUP_CONCAT(DISTINCT lang.language SEPARATOR ', ') AS supported_languages,
    GROUP_CONCAT(DISTINCT acc.accessibilitytype SEPARATOR ', ') AS accessibility_features
FROM 
    Services s
LEFT JOIN 
    Service_Provider sp ON s.sid = sp.ServiceID
LEFT JOIN 
    Provider p ON sp.ProviderID = p.pid
LEFT JOIN 
    Organizations o ON p.OrgID = o.oid
LEFT JOIN 
    Locations l ON s.sid = l.ServiceID
LEFT JOIN 
    Language_Support ls ON s.sid = ls.ServiceID
LEFT JOIN 
    Language lang ON ls.LanguageID = lang.lid
LEFT JOIN 
    Accessibility acc ON s.sid = acc.ServiceID
WHERE 
    s.type LIKE '%depression%'
GROUP BY 
    s.sid, 
    s.type, 
    s.cost, 
    s.onlineavability, 
    p.name, 
    p.specialty, 
    o.name, 
    o.contactinfo, 
    l.address, 
    l.city, 
    l.wheelchairaccess, 
    l.publictransportaccess;

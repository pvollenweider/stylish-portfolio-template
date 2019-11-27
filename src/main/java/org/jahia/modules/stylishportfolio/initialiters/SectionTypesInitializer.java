package org.jahia.modules.stylishportfolio.initialiters;
import org.jahia.services.content.JCRPropertyWrapper;
import org.jahia.services.content.nodetypes.ExtendedPropertyDefinition;
import org.jahia.services.content.nodetypes.ValueImpl;
import org.jahia.services.content.nodetypes.initializers.ChoiceListValue;
import org.jahia.services.content.nodetypes.initializers.ModuleChoiceListInitializer;
import org.jahia.services.content.nodetypes.renderer.AbstractChoiceListRenderer;
import org.jahia.services.content.nodetypes.renderer.ModuleChoiceListRenderer;
import org.jahia.services.render.RenderContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.jcr.PropertyType;
import javax.jcr.RepositoryException;
import javax.jcr.Value;
import java.util.*;

public class SectionTypesInitializer extends AbstractChoiceListRenderer implements ModuleChoiceListInitializer, ModuleChoiceListRenderer {

    private static final Logger logger = LoggerFactory.getLogger(SectionTypesInitializer.class);

    private String key;

    /**
     * {@inheritDoc}
     */
    public List<ChoiceListValue> getChoiceListValues(ExtendedPropertyDefinition epd, String param, List<ChoiceListValue> values,
                                                     Locale locale, Map<String, Object> context) {

        //Create the list of ChoiceListValue to return
        List<ChoiceListValue> myChoiceList = new ArrayList<ChoiceListValue>();

        if (context == null) {
            return myChoiceList;
        }

        HashMap<String, Object> myPropertiesMap = null;

        // header
        myPropertiesMap = new HashMap<String, Object>();
        myPropertiesMap.put("addMixin","spmix:image");
        myChoiceList.add(new ChoiceListValue("header",myPropertiesMap,new ValueImpl("header", PropertyType.STRING, false)));

        // callout
        myPropertiesMap = new HashMap<String, Object>();
        myPropertiesMap.put("addMixin","spmix:image");
        myChoiceList.add(new ChoiceListValue("callout",myPropertiesMap,new ValueImpl("callout", PropertyType.STRING, false)));

        // blue
        myPropertiesMap = new HashMap<String, Object>();
        myChoiceList.add(new ChoiceListValue("blue",myPropertiesMap,new ValueImpl("blue", PropertyType.STRING, false)));

        // light
        myPropertiesMap = new HashMap<String, Object>();
        myChoiceList.add(new ChoiceListValue("light",myPropertiesMap,new ValueImpl("light", PropertyType.STRING, false)));

        // portfolio
        myPropertiesMap = new HashMap<String, Object>();
        myChoiceList.add(new ChoiceListValue("portfolio",myPropertiesMap,new ValueImpl("portfolio", PropertyType.STRING, false)));

        //Return the list
        return myChoiceList;
    }

    /**
     * {@inheritDoc}
     */
    public void setKey(String key) {
        this.key = key;
    }

    /**
     * {@inheritDoc}
     */
    public String getKey() {
        return key;
    }

    /**
     * {@inheritDoc}
     */
    public String getStringRendering(RenderContext context, JCRPropertyWrapper propertyWrapper) throws RepositoryException {
        final StringBuilder sb = new StringBuilder();

        if (propertyWrapper.isMultiple()) {
            sb.append('{');
            final Value[] values = propertyWrapper.getValues();
            for (Value value : values) {
                sb.append('[').append(value.getString()).append(']');
            }
            sb.append('}');
        } else {
            sb.append('[').append(propertyWrapper.getValue().getString()).append(']');
        }

        return sb.toString();
    }

    /**
     * {@inheritDoc}
     */
    public String getStringRendering(Locale locale, ExtendedPropertyDefinition propDef, Object propertyValue) throws RepositoryException {
        return "[" + propertyValue.toString() + "]";
    }
}
